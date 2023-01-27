package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class ApplyMentoring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int applyMentoringId;
    @Column(nullable = false) // 외래키
    private int menteeUid;
    @Column(columnDefinition = "VARCHAR(20)", nullable = false)
    private String job;
    @Column(columnDefinition = "VARCHAR(30)", nullable = false)
    private String company;
//    @OneToMany
//    @JoinColumn(name = "apply_mentoring_id")
//    private List<MentoringDate> mentoringDates = new ArrayList<>();
}
