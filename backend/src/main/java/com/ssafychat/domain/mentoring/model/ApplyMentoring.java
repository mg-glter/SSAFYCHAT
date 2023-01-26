package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class ApplyMentoring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "apply_mentoring_id")
    private int mentoringId;
    @Column(name = "mentee_uid", nullable = false) // 외래키
    private int menteeUid;
    @Column(nullable = false)
    private String job;
    @Column(nullable = false)
    private String company;
}
