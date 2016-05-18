package com.summer.db;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesData {
	private static Properties prop = new Properties();

	static {
		try {
			InputStream ips = PropertiesData.class.getResourceAsStream("dbdata.properties");
			if (ips != null) {
				prop.load(ips);
			} else {
				System.out.println(ips + "�������ļ�������");
			}

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private static final String def = "not find paramer";
	public static final String driver = prop.getProperty("driver", def);
	public static final String url = prop.getProperty("url", def);
	public static final String name = prop.getProperty("name", def);
	public static final String password = prop.getProperty("password", def);
}
