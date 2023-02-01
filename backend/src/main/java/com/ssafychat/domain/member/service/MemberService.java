package com.ssafychat.domain.member.service;

import com.ssafychat.domain.member.dto.MemberDto;
import com.ssafychat.domain.member.model.Member;

public interface MemberService {
    public boolean registUser(MemberDto member_info);
    public Member getUser(MemberDto member_info);
    public String createToken(Member member);
}
