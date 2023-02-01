package com.ssafychat.domain.member.service;

import com.ssafychat.domain.member.dto.MemberDto;
import com.ssafychat.domain.member.model.Member;
import com.ssafychat.domain.member.repository.MemberRepository;
import com.ssafychat.global.jwt.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Optional;

@RequiredArgsConstructor
@Service
public class MemberServiceImpl implements MemberService {
    @Autowired
    private MemberRepository memberRepository;

    @Autowired
    private JwtService jwtService;

    @Autowired
    private BCryptPasswordEncoder bcryptPasswordEncoder;

    //유효성 검사 적용안함, 기능구현까지 -> 나중에 검사하는 로직도 필요
    @Override
    public boolean registUser(MemberDto member_info) {
        Optional<Member> check_member = memberRepository.findByEmail(member_info.getEmail());
        if(check_member.isEmpty()){
            Member regist_user = Member.builder().
                    job(member_info.getJob()).
                    belong(member_info.getBelong()).
                    name(member_info.getName()).
                    email(member_info.getEmail()).
                    password(bcryptPasswordEncoder.encode(member_info.getPassword())).
                    studentNumber(member_info.getStudent_number()).
                    social("싸피").
                    role(" role_mentee").
                    build();
            memberRepository.save(regist_user);
            return true;
        }
        return false;
    }

    @Override
    public Member loginUser(MemberDto member_info) {
        Optional<Member> check_member = memberRepository.findByEmail(member_info.getEmail());
        if(bcryptPasswordEncoder.matches(member_info.getPassword(),check_member.get().getPassword())){
            return check_member.get();
        }
        return null;
    }

    @Override
    public String createToken(Member member) {
        String access_token = jwtService.createAccessToken("user_id", member.getUserId());
        String refresh_token = jwtService.createRefreshToken("user_id", member.getUserId());

        //member 리프레쉬토큰 넣고 DB update
        member.changeRefreshToken(refresh_token);
        memberRepository.save(member);
        return access_token;
    }


}
