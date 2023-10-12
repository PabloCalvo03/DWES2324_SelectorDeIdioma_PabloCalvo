package com.pablo.configurer;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigLoader {

    private static ConfigLoader instance;
    private final Properties properties;

    public ConfigLoader() {
        properties = new Properties();
        // Intenta cargar el archivo config.properties del classpath
        try (InputStream input = getClass().getClassLoader().getResourceAsStream("config.properties")) {
            // Si input es null, el archivo no se ha encontrado en el classpath
            if (input == null) {
                System.out.println("ConfigLoader().input_null");
                throw new IOException("Sorry, unable to find config.properties");
            }
            // Carga las propiedades del archivo
            properties.load(input);
        } catch (IOException ex) {
            System.out.println("ConfigLoader() " + ex.toString());
            throw new RuntimeException("Error loading config.properties", ex);
        }
    }

    public static synchronized ConfigLoader getInstance() {
        if (instance == null) {
            instance = new ConfigLoader();
        }
        return instance;
    }
    
    public String getJDBC() {
        String jdbc =  getProperty("bbdd.jdbc");
        return jdbc;
    }
    public String getUser() {
    	 String user =  getProperty("bbdd.user");
         return user;
    }
    public String getPass() {
    	String pass;
    	try {
    	   	 pass =  getProperty("bbdd.pass");
    	} catch(IllegalStateException e) {
    		pass = "";
    	}
        return pass;
   }
    public String getClientId() {

        String clientId =  getProperty("github.id.client");
    
        return clientId;
    }

    public String getClientSecret() {
    	  String clientSecret =  getProperty("github.app.secret");
        return clientSecret;
    }

    public String getRedirectUri() {
    	String uri =  getProperty("redirectUri");
        return uri;
    }

    private String getProperty(String key) throws IllegalStateException {
        String value = properties.getProperty(key);
        if (value == null || value.trim().isEmpty()) {
            throw new IllegalStateException(key + " is missing or empty in config.properties");
        }
        return value;
    }
}
