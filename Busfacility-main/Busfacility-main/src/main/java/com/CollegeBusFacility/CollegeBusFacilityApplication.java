package com.CollegeBusFacility;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@SpringBootApplication
@ComponentScan
public class CollegeBusFacilityApplication {

	public static void main(String[] args) {
		SpringApplication.run(CollegeBusFacilityApplication.class, args);
		System.out.println("Server started!");
	}

}
