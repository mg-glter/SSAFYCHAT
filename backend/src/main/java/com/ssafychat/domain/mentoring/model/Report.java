package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
@IdClass(ReportInterface.class)
public class Report {

    @Id
    @Column
    private int reporter;

    @Id
    @Column(name = "complete_mentoring_id")
    private int completeMentoringId; // 외래키
    @Column
    private int reported;
    @Column(columnDefinition = "TEXT")
    private String reason;
}
