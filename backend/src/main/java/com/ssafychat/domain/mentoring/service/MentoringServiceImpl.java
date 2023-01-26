package com.ssafychat.domain.mentoring.service;

import com.ssafychat.domain.mentoring.dao.MentoringDao;
import com.ssafychat.domain.mentoring.model.Mentoring;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MentoringServiceImpl implements MentoringService {

    @Autowired
    private MentoringDao mentoringDao;

    @Override
    public List<Mentoring> findMentoring(){
        return mentoringDao.findAll();
    };
}
