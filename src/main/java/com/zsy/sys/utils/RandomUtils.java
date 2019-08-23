package com.zsy.sys.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import com.sun.org.apache.bcel.internal.generic.NEW;

public class RandomUtils {
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private static SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	private static SimpleDateFormat sdf2 = new SimpleDateFormat("yyyyMMddHHmmssSSS");
	public static Random random = new Random();
	/**
	 * 得到当前日期
	 */
	public static String getCurrentDateForString() {
		return sdf.format(new Date());
	}
	/**
	 * 生成文件名使用时间+4位随机数
	 * @param suffix 文件名称
	 */
	public static String createFileNameUseTime(String fileName) {
		String fileSuffix=fileName.substring(fileName.lastIndexOf("."),fileName.length());
		String time=sdf1.format(new Date());
		Integer num=random.nextInt(9000)+1000;
		return time+num+fileSuffix;
	}
	/**
	 * 生成文件名使用时间+4位随机数
	 * @param fileName 文件名称
	 * @param suffix   临时文件后缀
	 */
	public static String createFileNameUseTime(String fileName,String suffix) {
		String fileSuffix=fileName.substring(fileName.lastIndexOf("."),fileName.length());
		String time=sdf1.format(new Date());
		Integer num=random.nextInt(9000)+1000;
		return time+num+fileSuffix+suffix;
	}
	/**
	 * 生成文件名使用uuid
	 */
	public static String createFileNameUseUUTD(String fileName) {
		String fileSuffix = fileName.substring(fileName.indexOf("."), fileName.length());
		
		return UUID.randomUUID().toString().replace("-", "").toUpperCase()+fileSuffix;
	}
	/**
	 * 根据时间 +五位随机数生成字符串
	 * @param carOrderCz
	 * @return
	 */
	public static String createRandomStringUseTime(String preffx) {
		
		return preffx+"_"+sdf2.format(new Date())+"_"+(random.nextInt(9000)+1000);
	}
}
