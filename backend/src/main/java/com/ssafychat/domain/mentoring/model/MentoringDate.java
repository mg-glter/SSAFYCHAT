package com.ssafychat.domain.mentoring.model;

import com.ssafychat.global.util.DateToStringConverter;
import lombok.*;

import javax.persistence.*;

@Getter
@ToString
@AllArgsConstructor
@RequiredArgsConstructor
@Builder
@Entity
@IdClass(MentoringDateInterface.class)
public class MentoringDate {

    @Id
    @Convert(converter= DateToStringConverter.class)
    @Column(nullable = false)
    private String time;

    @Id
    @ManyToOne
    @JoinColumn(name = "apply_mentoring_id")
    private ApplyMentoring applyMentoring;

}
