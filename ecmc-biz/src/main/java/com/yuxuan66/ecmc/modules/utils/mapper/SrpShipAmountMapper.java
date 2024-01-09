package com.yuxuan66.ecmc.modules.utils.mapper;

import com.yuxuan66.ecmc.modules.utils.entity.SrpShipAmount;
import com.yuxuan66.ecmc.support.base.BaseMapper;
import org.apache.ibatis.annotations.Select;

public interface SrpShipAmountMapper extends BaseMapper<SrpShipAmount> {
    @Select("SELECT * FROM corp_srp_ship_amount WHERE ship_id = #{shipId}")
    SrpShipAmount getByShipId(int shipId);
}
