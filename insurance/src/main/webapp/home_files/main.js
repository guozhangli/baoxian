jQuery(document).ready(function($) {

  var topMainSpacing = $('#header').outerHeight(true)
  //$('#main').css('margin-top', topMainSpacing + 'px');

  // Scrolltop
  $(window).scroll(function() {
    if ($(this).scrollTop() > 100) {
      $('.scrolltop').fadeIn('slow');
    } else {
      $('.scrolltop').fadeOut('slow');
    }
  });

  $('.scrolltop').click(function(e) {
    e.preventDefault();
    $('html, body').animate({
      scrollTop: 0
    }, 1200, 'easeInOutExpo');
    return false;
  });

  // Smooth scroll for the menu and links with .scrollto classes
  $('.smoothscroll').on('click', function(e) {
    e.preventDefault();
    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
      var target = $(this.hash);
      if (target.length) {

        $('html, body').animate({
          scrollTop: target.offset().top - 70
        }, 1500, 'easeInOutExpo');
      }
    }
  });

  // Search bar toggle
  $('.search-toggle').on('click', function() {
    if($('.top-search').is(':visible')){
      $( ".top-search" ).slideUp();
    } else {
      $( ".top-search" ).slideDown();
    }
  });

  // Mobile Navigation
  if ($('#topnav').length) {

    var $mobile_nav = $('#topnav').clone().prop({
      id: 'mobile-nav'
    });
    $mobile_nav.find('> ul').attr({
      'class': '',
      'id': ''
    });
    $('body').append($mobile_nav);
    $('#header .container').prepend('<button type="button" id="mobile-nav-toggle"><i class="icon-menu"></i></button>');
    $('body').append('<div id="mobile-body-overly"></div>');
    $('#mobile-nav').find('.menu-has-children').prepend('<i class="fa fa-chevron-down"></i>');

    $(document).on('click', '.menu-has-children i', function(e) {
      $(this).next().toggleClass('menu-item-active');
      $(this).nextAll('ul').eq(0).slideToggle();
      $(this).toggleClass("fa-chevron-up fa-chevron-down");
    });

    $(document).on('click', '#mobile-nav-toggle', function(e) {
      $('body').toggleClass('mobile-nav-active');
      $('#mobile-body-overly').toggle();
    });

    $(document).click(function(e) {
      var container = $("#mobile-nav, #mobile-nav-toggle");
      if (!container.is(e.target) && container.has(e.target).length === 0) {
        if ($('body').hasClass('mobile-nav-active')) {
          $('body').removeClass('mobile-nav-active');
          $('#mobile-body-overly').fadeOut();
        }
      }
    });
    $('#mobile-nav').css('top', topMainSpacing + 'px');

  } else if ($("#mobile-nav, #mobile-nav-toggle").length) {
    $("#mobile-nav, #mobile-nav-toggle").hide();
  }


  if ( $("#sidebar-fixed").length && window.matchMedia('(min-width: 769px)').matches && (navigator.userAgent.indexOf("iPhone") == -1 && navigator.userAgent.indexOf("iPad") == -1 && navigator.userAgent.indexOf("Blackberry") == -1 && navigator.userAgent.indexOf("Android") == -1)) {
    var bottomSpacing = $(document).height() - $('#main').outerHeight() - $('#header').outerHeight();
    $("#sidebar-fixed").sticky({
      topSpacing: topMainSpacing + 30,
      bottomSpacing: bottomSpacing -60
    });
  }

  $(".sharethis").sticky({topSpacing:topMainSpacing-1, getWidthFrom: '.col-lg-8', wrapperClassName: 'sharethis-wrapper'});

  // Ajax loading Image
  function tm_loading(custom_msg) {
    if( typeof custom_msg == 'undefined' ) {
      custom_msg = '';
    } else {
      custom_msg = ' ' + custom_msg;
    }
    return '<img src="' + tm_template_url + '/assets/loading.gif">' + custom_msg;
  }

  // Select License
  $('.select-license li').on('click', function() {
    $('.select-license li').removeClass('active');
    $(this).addClass('active');
    var license = $(this).attr('id');
    $('.license-features li').removeClass('active');
    $('.license-features li i').removeClass().addClass('icon-cancel');
    $('.license-features .' + license + ' i').removeClass().addClass('icon-ok');
    $('.license-features .' + license).addClass('active');
    $('.download a').removeClass('active');
    $('.download .' + license +'-download').addClass('active');
    $('.license-info p').removeClass('show');
    $('.license-info .' + license + '-info').addClass('show');
  });

  // Download button
  $('.l-free-download').on('click', function(e) {
    e.preventDefault();
    $('.tos-required').hide();
    $('.loading').hide();


    $('.loading').html( tm_loading('Downloading!') ).show();
    var download_url = $(this).data('checkout');
    $.ajax({
      type: "GET",
      url: download_url,
      success: function(msg) {
        $('.loading').html(msg);
      }
    });

  });

  // Cancel payment
  $('#cancel-payment').on('click', function(e) {
    e.preventDefault();
    $('#payment-frame').attr('src', '').hide();
    $(this).hide();
  });

  // Select Membership
  $('.select-membership li').on('click', function(e) {
    e.preventDefault();
    $('.select-membership li').removeClass('active');
    $(this).addClass('active');

    var license = $(this).attr('id');
    $('.buy a').removeClass('active');
    $('.buy .' + license +'-buy').addClass('active');
  });

});
