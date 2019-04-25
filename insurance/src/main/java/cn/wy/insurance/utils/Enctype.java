package cn.wy.insurance.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * shiro提供的MD5Hash加密算法
 * @author gzli
 */
public class Enctype {

	public static String md5(String word,String salt){
		Md5Hash e=new Md5Hash(word,salt,3);
		return e.toString();
	}
	public static String md5(String word,String salt,int index){
		Md5Hash e=new Md5Hash(word,salt,index);
		return e.toString();
	}
}
