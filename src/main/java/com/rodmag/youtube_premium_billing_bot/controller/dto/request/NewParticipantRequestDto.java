package com.rodmag.youtube_premium_billing_bot.controller.dto.request;

public record NewParticipantRequestDto(
        String name,
        String email,
        String phone,
        Integer billingOrder
) {
}
