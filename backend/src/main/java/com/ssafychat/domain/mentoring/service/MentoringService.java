package com.ssafychat.domain.mentoring.service;

import com.ssafychat.domain.member.model.Member;
import com.ssafychat.domain.mentoring.model.Mentoring;

import java.util.List;

public interface MentoringService {

    List<Mentoring> findMentoring();
}
