package com.ssafychat.domain.member.controller;


import com.ssafychat.domain.member.dto.MemberDto;
import com.ssafychat.domain.member.model.Member;
import com.ssafychat.domain.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
public class LoginController {

    @Autowired
    private MemberService memberService;

    @GetMapping("")
    public ResponseEntity<?> aliveCheck() {
        return new ResponseEntity<String>("Alive", HttpStatus.OK);
    }

    @PostMapping("/regist")
    public ResponseEntity<?> registUser(MemberDto member_info) {
        boolean success = memberService.registUser(member_info);
        if(success){
            return new ResponseEntity<>(success, HttpStatus.OK);
        }
        return new ResponseEntity<>(success, HttpStatus.BAD_REQUEST);
    }

    @PostMapping("/login")
    public ResponseEntity<?> nomalLogin(MemberDto member_info) {
        //사용자가 전달한 email, password와 일치하는 사용자 찾기
        Member member = memberService.loginUser(member_info);
        if(member != null){//존재한다면 토큰생성
            String access_token = memberService.createToken(member);
            System.out.println(access_token);
            return new ResponseEntity<>(member, HttpStatus.OK);
        }

        return new ResponseEntity<>("fail",HttpStatus.INTERNAL_SERVER_ERROR);
    }


}
