package com.ssafychat.domain.member.controller;


import com.ssafychat.global.jwt.JwtServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/user")
@CrossOrigin("*")
public class MemberController {
    @Autowired
    private JwtServiceImpl jwtService;

    @GetMapping("/")
    public ResponseEntity<?> aliveCheck() {
        return new ResponseEntity<String>("Alive", HttpStatus.OK);
    }

    @GetMapping("/mentoring-infos")
    public ResponseEntity<?> mentoringInfo() {
        return new ResponseEntity<String>("mentoring-infos", HttpStatus.OK);
    }
    @GetMapping("/regist")
    public ResponseEntity<?> registUser() {
        return new ResponseEntity<String>("regist", HttpStatus.OK);
    }
    @GetMapping("/registinfo")//생각해볼 것 소셜로그인 매커니즘에 따르면 rest api가 필요한가?
    public ResponseEntity<?> socialRegist() {
        return new ResponseEntity<String>("registinfo", HttpStatus.OK);
    }

    @GetMapping("/login")
    public ResponseEntity<?> nomalLogin() {
        Map<String,String> token_obj = new HashMap<>();
        token_obj.put("access-token",jwtService.createAccessToken("memberid", "temp id"));
        token_obj.put("refresh-token",jwtService.createRefreshToken("memberid", "temp id"));
        return new ResponseEntity<>(token_obj, HttpStatus.OK);
    }

    @GetMapping("/user-info")
    public ResponseEntity<?> userInfo() {
        return new ResponseEntity<String>("user-info", HttpStatus.OK);
    }
    @GetMapping("/login/{social}")
    public ResponseEntity<?> socialLogin(@PathVariable("social") String social) {
        return new ResponseEntity<String>("social:"+social, HttpStatus.OK);
    }
}
