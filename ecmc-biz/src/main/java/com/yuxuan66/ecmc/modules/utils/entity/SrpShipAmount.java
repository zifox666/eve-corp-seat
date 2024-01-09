package com.yuxuan66.ecmc.modules.utils.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.yuxuan66.ecmc.support.base.BaseEntity;
import lombok.Data;
import org.springframework.data.annotation.Id;

import java.io.Serializable;
import java.math.BigDecimal;

@Data
@TableName("corp_srp_ship_amount")
public class SrpShipAmount extends BaseEntity<SrpShipAmount> implements Serializable {
    int shipId;
    int shipType;
    String shipName;
    String shipNameChinese;
    BigDecimal amount;
    String remark;
}
