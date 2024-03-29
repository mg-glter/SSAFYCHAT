package com.ssafychat.domain.member.exception;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;

@Getter
@RequiredArgsConstructor
public enum ErrorCode {
    SUCCESS(HttpStatus.OK,"성공"),
    EXPiRED_TOKEN(HttpStatus.UNAUTHORIZED,"UNAUTHORIZED"),
    INVALID_TOKEN(HttpStatus.FORBIDDEN, "FORBIDDEN");


    private final HttpStatus status;
    private final String message;
}
