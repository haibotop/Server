package com.nowbook.restful.controller.testPostOrder.bin.demo.src.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	// 获得MD5摘要算法的 MessageDigest 对象
	private static MessageDigest _mdInst = null;
	private static char hexDigits[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
	private static MessageDigest getMdInst() {
		if (_mdInst == null) {
			try {
				_mdInst = MessageDigest.getInstance("MD5");
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
		}
		return _mdInst;
	}

	public final static String encode(String s) {
		try {
			byte[] btInput = s.getBytes();
			// 使用指定的字节更新摘要
			getMdInst().update(btInput);
			// 获得密文
			byte[] md = getMdInst().digest();
			// 把密文转换成十六进制的字符串形式
			int j = md.length;
			char str[] = new char[j * 2];
			int k = 0;
			for (int i = 0; i < j; i++) {
				byte byte0 = md[i];
				str[k++] = hexDigits[byte0 >>> 4 & 0xf];
				str[k++] = hexDigits[byte0 & 0xf];
			}
			return new String(str);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static String KL(String inStr) {
		// String s = new String(inStr);
		char[] a = inStr.toCharArray();
		for (int i = 0; i < a.length; i++) {
			a[i] = (char) (a[i] ^ 't');
		}
		String s = new String(a);
		return s;
	}

	public static void main(String[] arg){
		System.out.println(MD5.encode("abc这是一个测试123"));
		System.out.println(KL(MD5.encode("abc这是一个测试123")));
		System.out.println(KL(KL(MD5.encode("abc这是一个测试123"))));
	}
}
