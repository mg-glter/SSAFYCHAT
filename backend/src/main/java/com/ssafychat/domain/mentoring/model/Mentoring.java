package com.ssafychat.domain.mentoring.model;

import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
public class Mentoring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mentoring_id")
    private int mentoringId;
}
