package com.ssafychat.domain.mentoring.controller;

import com.ssafychat.domain.mentoring.model.Mentoring;
import com.ssafychat.domain.mentoring.service.MentoringServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/mentoring")
@CrossOrigin("*")
public class MentoringController {
    @Autowired
    private MentoringServiceImpl mentoringService;

    @GetMapping
    public List<Mentoring> findMentoring() {
        return mentoringService.findMentoring();
    }

}
