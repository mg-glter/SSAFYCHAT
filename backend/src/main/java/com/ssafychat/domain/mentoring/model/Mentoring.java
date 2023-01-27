package com.ssafychat.domain.mentoring.model;

import com.ssafychat.domain.member.model.Member;
import com.ssafychat.global.util.DateToStringConverter;
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
    private int mentoringId;

    @ManyToOne
    @JoinColumn(name = "mentee_uid", nullable = false)
    private Member mentee;

    @ManyToOne
    @JoinColumn(name = "mentor_uid", nullable = false)
    private Member mentor;

    @Convert(converter= DateToStringConverter.class)
    @Column(nullable = false)
    private String time;

    @Column(columnDefinition = "VARCHAR(20)", nullable = false)
    private String job;

    @Column(columnDefinition = "VARCHAR(30)", nullable = false)
    private String company;

}
