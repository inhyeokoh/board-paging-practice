package org.example.basicpj.domain;

import lombok.*;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Post {
    Long id;
    String title;
    String content;
    String writer;
    LocalDateTime createdAt;
}
