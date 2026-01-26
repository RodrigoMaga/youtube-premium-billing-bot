package com.rodmag.youtube_premium_billing_bot.repositories;

import com.rodmag.youtube_premium_billing_bot.entities.Payment;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PaymentRepository extends JpaRepository<Payment, Long> {
}
