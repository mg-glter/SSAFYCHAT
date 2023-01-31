package com.ssafychat.domain.mentoring.service;

import com.ssafychat.domain.member.model.Member;
import com.ssafychat.domain.mentoring.dao.MentoringDao;
import com.ssafychat.domain.mentoring.dto.ApplyMentoringDto;
import com.ssafychat.domain.mentoring.model.ApplyMentoring;
import com.ssafychat.domain.mentoring.model.Mentoring;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public interface MentoringService {

    List<Mentoring> findMentoring();

    void applyMentoring(ApplyMentoring applyMentoring);

}
