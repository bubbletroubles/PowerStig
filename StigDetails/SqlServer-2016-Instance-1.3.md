# [MS SQL Server 2016 Instance STIG, Version 1.3](https://github.com/Microsoft/PowerStig/wiki/SqlServer-2016-Instance-1.3)

**Title:** MS SQL Server 2016 Instance Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 3 Benchmark Date: 26 Oct 2018  
**FileName:** U_MS_SQL_Server_2016_Instance_STIG_V1R3_Manual-xccdf.xml  
**Created:** 11/22/2019  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **21** of **119** rules are automated; **18%**

* **High (CAT I):** **0** of **8** rules are automated
* **Medium (CAT II):** **20** of **108** rules are automated
* **Low (CAT III):** **1** of **3** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-79197 | Low | SecurityOptionRule | SecurityOption |  |
| V-79141 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79239 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79259 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79261 | Medium | SqlScriptQueryRule | None | V-79259 |
| V-79263 | Medium | SqlScriptQueryRule | None | V-79259 |
| V-79265 | Medium | SqlScriptQueryRule | None | V-79259 |
| V-79267 | Medium | SqlScriptQueryRule | None | V-79141 |
| V-79269 | Medium | SqlScriptQueryRule | None | V-79141 |
| V-79275 | Medium | SqlScriptQueryRule | None | V-79259 |
| V-79277 | Medium | SqlScriptQueryRule | None | V-79259 |
| V-79279 | Medium | SqlScriptQueryRule | None | V-79141 |
| V-79281 | Medium | SqlScriptQueryRule | None | V-79141 |
| V-79287 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79289 | Medium | SqlScriptQueryRule | None | V-79141 |
| V-79291 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79293 | Medium | SqlScriptQueryRule | None | V-79291 |
| V-79295 | Medium | SqlScriptQueryRule | None | V-79291 |
| V-79297 | Medium | SqlScriptQueryRule | None | V-79141 |
| V-79317 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79319 | Medium | SqlScriptQueryRule | None | V-79317 |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-79119 | Medium | DocumentRule |
| V-79121 | Medium | DocumentRule |
| V-79123 | Medium | DocumentRule |
| V-79125 | High | DocumentRule |
| V-79127 | Medium | DocumentRule |
| V-79133 | Medium | DocumentRule |
| V-79135 | Medium | DocumentRule |
| V-79137 | Medium | DocumentRule |
| V-79139 | Medium | DocumentRule |
| V-79143 | Medium | DocumentRule |
| V-79145 | Medium | DocumentRule |
| V-79147 | Medium | DocumentRule |
| V-79149 | Medium | DocumentRule |
| V-79157 | Medium | DocumentRule |
| V-79159 | Medium | DocumentRule |
| V-79161 | Medium | DocumentRule |
| V-79163 | Medium | DocumentRule |
| V-79165 | Medium | DocumentRule |
| V-79167 | Medium | DocumentRule |
| V-79171 | Medium | DocumentRule |
| V-79173 | Medium | DocumentRule |
| V-79175 | Medium | DocumentRule |
| V-79177 | Medium | DocumentRule |
| V-79179 | Medium | DocumentRule |
| V-79181 | Medium | DocumentRule |
| V-79183 | Medium | DocumentRule |
| V-79187 | Medium | DocumentRule |
| V-79193 | Medium | DocumentRule |
| V-79201 | Medium | DocumentRule |
| V-79205 | High | DocumentRule |
| V-79211 | Medium | DocumentRule |
| V-79213 | Medium | DocumentRule |
| V-79215 | Medium | DocumentRule |
| V-79219 | Medium | DocumentRule |
| V-79221 | Medium | DocumentRule |
| V-79223 | Medium | DocumentRule |
| V-79225 | Medium | DocumentRule |
| V-79227 | Medium | DocumentRule |
| V-79231 | Medium | DocumentRule |
| V-79233 | Medium | DocumentRule |
| V-79235 | Medium | DocumentRule |
| V-79237 | Medium | DocumentRule |
| V-79241 | Medium | DocumentRule |
| V-79243 | Medium | DocumentRule |
| V-79245 | Medium | DocumentRule |
| V-79247 | Medium | DocumentRule |
| V-79253 | Medium | DocumentRule |
| V-79255 | Medium | DocumentRule |
| V-79257 | Medium | DocumentRule |
| V-79271 | Medium | DocumentRule |
| V-79273 | Medium | DocumentRule |
| V-79283 | Medium | DocumentRule |
| V-79285 | Medium | DocumentRule |
| V-79299 | Medium | DocumentRule |
| V-79301 | Medium | DocumentRule |
| V-79309 | Medium | DocumentRule |
| V-79311 | Medium | DocumentRule |
| V-79313 | Medium | DocumentRule |
| V-79315 | Medium | DocumentRule |
| V-79321 | Medium | DocumentRule |
| V-79323 | Medium | DocumentRule |
| V-79325 | Medium | DocumentRule |
| V-79327 | Medium | DocumentRule |
| V-79329 | Medium | DocumentRule |
| V-79331 | Medium | DocumentRule |
| V-79333 | Medium | DocumentRule |
| V-79335 | Medium | DocumentRule |
| V-79337 | Medium | DocumentRule |
| V-79341 | Medium | DocumentRule |
| V-79343 | Medium | DocumentRule |
| V-79345 | Medium | DocumentRule |
| V-79347 | Medium | DocumentRule |
| V-79349 | Low | DocumentRule |
| V-79351 | Medium | DocumentRule |
| V-79353 | Low | DocumentRule |
| V-79355 | High | DocumentRule |
| V-79129 | High | ManualRule |
| V-79131 | Medium | ManualRule |
| V-79151 | Medium | ManualRule |
| V-79153 | Medium | ManualRule |
| V-79155 | Medium | ManualRule |
| V-79169 | Medium | ManualRule |
| V-79185 | Medium | ManualRule |
| V-79189 | Medium | ManualRule |
| V-79191 | Medium | ManualRule |
| V-79195 | High | ManualRule |
| V-79199 | Medium | ManualRule |
| V-79203 | Medium | ManualRule |
| V-79207 | Medium | ManualRule |
| V-79209 | Medium | ManualRule |
| V-79217 | Medium | ManualRule |
| V-79229 | Medium | ManualRule |
| V-79249 | Medium | ManualRule |
| V-79251 | Medium | ManualRule |
| V-79303 | Medium | ManualRule |
| V-79305 | High | ManualRule |
| V-79307 | High | ManualRule |
| V-79357 | High | ManualRule |
