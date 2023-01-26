package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class MentoringDate {

    @Id
    @Column
    private String time;


    // 복합키 설정 필요
    @Column(name = "apply_mentoring_id") // 외래키
    private int applyMentoringId;
}
