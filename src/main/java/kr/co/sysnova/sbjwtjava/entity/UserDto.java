package kr.co.sysnova.sbjwtjava.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class UserDto {
  private int id;
  private String username;
  private String password;
  private String realname;
  private Timestamp createTime;
}
