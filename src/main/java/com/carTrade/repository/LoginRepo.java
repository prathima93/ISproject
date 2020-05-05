package com.carTrade.repository;

import com.carTrade.model.Customers;
import org.springframework.data.cassandra.repository.CassandraRepository;

public interface LoginRepo extends CassandraRepository<Customers, String> {
}
