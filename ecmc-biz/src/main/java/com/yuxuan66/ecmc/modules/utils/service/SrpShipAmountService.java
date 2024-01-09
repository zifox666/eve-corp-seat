package com.yuxuan66.ecmc.modules.utils.service;

import com.yuxuan66.ecmc.modules.utils.mapper.SrpShipAmountMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.math.BigDecimal;

@Service
@RequiredArgsConstructor
public class SrpShipAmountService {
    @Resource
	final private SrpShipAmountMapper srpShipAmountMapper;
    public BigDecimal getAmountByShipId(long shipId){
        return srpShipAmountMapper.getByShipId((int) shipId).getAmount();
    }
}
