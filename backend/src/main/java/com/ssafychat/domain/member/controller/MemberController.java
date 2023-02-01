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

    @PostMapping("/regist")
    public ResponseEntity<?> registUser(MemberDto member_info) {
        boolean success = memberService.registUser(member_info);
        if(success){
            return new ResponseEntity<>(success, HttpStatus.OK);
        }
        return new ResponseEntity<>(success, HttpStatus.BAD_REQUEST);
    }
    @GetMapping("/registinfo")//생각해볼 것 소셜로그인 매커니즘에 따르면 rest api가 필요한가?
    public ResponseEntity<?> socialRegist() {
        return new ResponseEntity<String>("registinfo", HttpStatus.OK);
    }

    @PostMapping("/login")
    public ResponseEntity<?> nomalLogin(MemberDto member_info) {
        //사용자가 전달한 email, password와 일치하는 사용자 찾기
        Member member = memberService.getUser(member_info);
        if(member != null){//존재한다면 토큰생성
            String access_token = memberService.createToken(member);
            return new ResponseEntity<>(member, HttpStatus.OK);
        }

        return new ResponseEntity<>("fail",HttpStatus.INTERNAL_SERVER_ERROR);
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
