package com.yaltuzz.userservice.data;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Objects;

@Data
@AllArgsConstructor
public class AuthRequest {
    private String username;
    private String password;
}