package com.ssafychat.domain.member.controller;


import com.ssafychat.domain.member.dto.MemberDto;
import com.ssafychat.domain.member.model.Member;
import com.ssafychat.domain.member.service.MemberService;
import com.ssafychat.domain.member.service.MemberServiceImpl;
import com.ssafychat.global.jwt.JwtService;
import com.ssafychat.global.jwt.JwtServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/user")
@CrossOrigin("*")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/")
    public ResponseEntity<?> aliveCheck() {
        return new ResponseEntity<String>("Alive", HttpStatus.OK);
    }

    @GetMapping("/mentoring-infos")
    public ResponseEntity<?> mentoringInfo() {
        return new ResponseEntity<String>("mentoring-infos", HttpStatus.OK);
    }


    @GetMapping("/registinfo")//생각해볼 것 소셜로그인 매커니즘에 따르면 rest api가 필요한가?
    public ResponseEntity<?> socialRegist() {
        return new ResponseEntity<String>("registinfo", HttpStatus.OK);
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
