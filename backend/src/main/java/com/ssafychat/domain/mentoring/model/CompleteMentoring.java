package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class CompleteMentoring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "complete_mentoring_id")
    private int completeMentoringId;
    @Column(name = "mentee_uid", nullable = false) // 외래키
    private int menteeUid;
    @Column(name = "mentor_uid", nullable = false) // 외래키
    private int mentorUid;
    @Column
    private String time; // 1. 형식? 2. default가 null로 되어 있는데 맞나요?
    @Column(name = "chat_log", nullable = false)
    private String chatLog;
    @Column(nullable = false)
    private String job;
    @Column(nullable = false)
    private String company;
    @Column(nullable = false)
    private int score;
    @Column(name = "review_content", columnDefinition = "TEXT") // 길이 제한?
    private String reviewContent;
    @Column(name = "review_width")
    private int reviewWidth;
    @Column(name = "review_height")
    private int reviewHeight;
    @Column(name = "review_selected", nullable = false)
    private int reviewSelected;

}
