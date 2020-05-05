package com.carTrade.repository;

import com.carTrade.model.Customers;
import org.springframework.data.cassandra.repository.CassandraRepository;

import java.util.UUID;

public interface CustomerRepo extends CassandraRepository<Customers, String> {

}
