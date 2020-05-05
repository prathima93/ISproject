package com.carTrade.model;

import lombok.Data;
import org.springframework.data.cassandra.core.mapping.PrimaryKey;
import org.springframework.data.cassandra.core.mapping.Table;

import java.util.UUID;

@Table
@Data
public class Customers {

    private UUID id;
    private String fname;
    private String lname;
    private String email;
    private String password;

    @PrimaryKey
    private String username;

}
