# [MS SQL Server 2016 Instance STIG, Version 1.7](https://github.com/Microsoft/PowerStig/wiki/SqlServer-2016-Instance-1.7)

**Title:** MS SQL Server 2016 Instance Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 7 Benchmark Date: 25 Oct 2019  
**FileName:** U_MS_SQL_Server_2016_Instance_STIG_V1R7_Manual-xccdf.xml  
**Created:** 12/5/2019  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **37** of **133** rules are automated; **28%**  

## Automated Rules

| StigRuleId | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- |
| V-97521.a | RegistryRule | Registry |  |
| V-97521.b | RegistryRule | Registry |  |
| V-97521.c | RegistryRule | Registry |  |
| V-97521.d | RegistryRule | Registry |  |
| V-97521.e | RegistryRule | Registry |  |
| V-97521.f | RegistryRule | Registry |  |
| V-97521.g | RegistryRule | Registry |  |
| V-97521.h | RegistryRule | Registry |  |
| V-97521.i | RegistryRule | Registry |  |
| V-97521.j | RegistryRule | Registry |  |
| V-97521.k | RegistryRule | Registry |  |
| V-97521.l | RegistryRule | Registry |  |
| V-97521.m | RegistryRule | Registry |  |
| V-97521.n | RegistryRule | Registry |  |
| V-97521.o | RegistryRule | Registry |  |
| V-97521.p | RegistryRule | Registry |  |
| V-79197 | SecurityOptionRule | SecurityOption |  |
| V-79141 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79239 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79259 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79261 | SqlScriptQueryRule | None | V-79259 |
| V-79263 | SqlScriptQueryRule | None | V-79259 |
| V-79265 | SqlScriptQueryRule | None | V-79259 |
| V-79267 | SqlScriptQueryRule | None | V-79141 |
| V-79269 | SqlScriptQueryRule | None | V-79141 |
| V-79275 | SqlScriptQueryRule | None | V-79259 |
| V-79277 | SqlScriptQueryRule | None | V-79259 |
| V-79279 | SqlScriptQueryRule | None | V-79141 |
| V-79281 | SqlScriptQueryRule | None | V-79141 |
| V-79287 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79289 | SqlScriptQueryRule | None | V-79141 |
| V-79291 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79293 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79295 | SqlScriptQueryRule | None | V-79293 |
| V-79297 | SqlScriptQueryRule | None | V-79141 |
| V-79317 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-79319 | SqlScriptQueryRule | None | V-79317 |

## Document / Manual Rules (Not Automated)

| StigRuleId | RuleType |
| :---- | :---- |
| V-79119 | DocumentRule |
| V-79121 | DocumentRule |
| V-79123 | DocumentRule |
| V-79125 | DocumentRule |
| V-79127 | DocumentRule |
| V-79133 | DocumentRule |
| V-79135 | DocumentRule |
| V-79137 | DocumentRule |
| V-79139 | DocumentRule |
| V-79145 | DocumentRule |
| V-79147 | DocumentRule |
| V-79149 | DocumentRule |
| V-79157 | DocumentRule |
| V-79159 | DocumentRule |
| V-79161 | DocumentRule |
| V-79163 | DocumentRule |
| V-79165 | DocumentRule |
| V-79167 | DocumentRule |
| V-79171 | DocumentRule |
| V-79173 | DocumentRule |
| V-79175 | DocumentRule |
| V-79177 | DocumentRule |
| V-79179 | DocumentRule |
| V-79181 | DocumentRule |
| V-79183 | DocumentRule |
| V-79187 | DocumentRule |
| V-79193 | DocumentRule |
| V-79201 | DocumentRule |
| V-79205 | DocumentRule |
| V-79211 | DocumentRule |
| V-79213 | DocumentRule |
| V-79215 | DocumentRule |
| V-79219 | DocumentRule |
| V-79221 | DocumentRule |
| V-79223 | DocumentRule |
| V-79225 | DocumentRule |
| V-79227 | DocumentRule |
| V-79231 | DocumentRule |
| V-79233 | DocumentRule |
| V-79235 | DocumentRule |
| V-79237 | DocumentRule |
| V-79241 | DocumentRule |
| V-79243 | DocumentRule |
| V-79245 | DocumentRule |
| V-79247 | DocumentRule |
| V-79253 | DocumentRule |
| V-79255 | DocumentRule |
| V-79257 | DocumentRule |
| V-79271 | DocumentRule |
| V-79273 | DocumentRule |
| V-79283 | DocumentRule |
| V-79285 | DocumentRule |
| V-79299 | DocumentRule |
| V-79301 | DocumentRule |
| V-79309 | DocumentRule |
| V-79311 | DocumentRule |
| V-79313 | DocumentRule |
| V-79315 | DocumentRule |
| V-79321 | DocumentRule |
| V-79323 | DocumentRule |
| V-79325 | DocumentRule |
| V-79327 | DocumentRule |
| V-79329 | DocumentRule |
| V-79333 | DocumentRule |
| V-79335 | DocumentRule |
| V-79337 | DocumentRule |
| V-79341 | DocumentRule |
| V-79343 | DocumentRule |
| V-79345 | DocumentRule |
| V-79347 | DocumentRule |
| V-79349 | DocumentRule |
| V-79351 | DocumentRule |
| V-79353 | DocumentRule |
| V-79355 | DocumentRule |
| V-79129 | ManualRule |
| V-79131 | ManualRule |
| V-79151 | ManualRule |
| V-79153 | ManualRule |
| V-79155 | ManualRule |
| V-79169 | ManualRule |
| V-79185 | ManualRule |
| V-79189 | ManualRule |
| V-79191 | ManualRule |
| V-79195 | ManualRule |
| V-79199 | ManualRule |
| V-79203 | ManualRule |
| V-79207 | ManualRule |
| V-79209 | ManualRule |
| V-79217 | ManualRule |
| V-79229 | ManualRule |
| V-79249 | ManualRule |
| V-79251 | ManualRule |
| V-79303 | ManualRule |
| V-79305 | ManualRule |
| V-79307 | ManualRule |
| V-79357 | ManualRule |
