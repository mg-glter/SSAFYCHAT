package com.ssafychat.domain.mentoring.service;

import com.ssafychat.domain.member.dao.MemberRepository;
import com.ssafychat.domain.member.model.Member;
import com.ssafychat.domain.mentoring.dao.ApplyMentoringRepository;
import com.ssafychat.domain.mentoring.dao.MentoringDao;
import com.ssafychat.domain.mentoring.dto.ApplyMentoringDto;
import com.ssafychat.domain.mentoring.model.ApplyMentoring;
import com.ssafychat.domain.mentoring.model.Mentoring;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class MentoringServiceImpl implements MentoringService {

    @Autowired
    private MentoringDao mentoringDao;

    @Autowired
    private ApplyMentoringRepository applyMentoringRepository;

    @Autowired
    private MemberRepository memberRepository;

    @Override
    public List<Mentoring> findMentoring(){
        return mentoringDao.findAll();
    }

    @Transactional
    public ApplyMentoring toEntity(ApplyMentoringDto applyMentoringDto){

        Optional<Member> memberOptional = memberRepository.findById(applyMentoringDto.getMenteeUid());
        Member member = memberOptional.get();
        return ApplyMentoring.builder()
                .applyMentoringId(applyMentoringDto.getApplyMentoringId())
                .mentee(member)
                .job(applyMentoringDto.getJob())
                .company(applyMentoringDto.getCompany())
                .build();
    }
    @Override
    @Transactional
    public void applyMentoring(ApplyMentoring applyMentoring) {
        this.applyMentoringRepository.save(applyMentoring);

    }

}
