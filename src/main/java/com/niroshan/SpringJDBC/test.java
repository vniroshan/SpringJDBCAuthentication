package com.niroshan.SpringJDBC;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class test {

    public static void main(String[] args){
        BCryptPasswordEncoder enc= new BCryptPasswordEncoder();
        String ep = enc.encode("ravi");
        System.out.println(ep);
    }

}
 