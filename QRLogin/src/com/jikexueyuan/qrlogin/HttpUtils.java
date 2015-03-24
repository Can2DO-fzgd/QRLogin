package com.jikexueyuan.qrlogin;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class HttpUtils{
	public static void login(final String url){
		new Thread(new Runnable() {
			@Override
			public void run() {
				HttpURLConnection connection;
				try {
					connection = (HttpURLConnection) new URL(url).openConnection();
					connection.setRequestMethod("GET");
					connection.getInputStream();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}).start();
	}
}