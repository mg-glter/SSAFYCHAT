package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class Report {

    @Id
    @Column
    private int reporter;

    // 복합키 설정 필요
    @Column(name = "complete_mentoring_id")
    private int completeMentoringId; // 외래키
    @Column
    private int reported;
    @Column
    private String reason; // 길이제한?
}
