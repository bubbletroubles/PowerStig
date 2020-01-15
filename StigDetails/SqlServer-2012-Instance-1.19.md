# [MS SQL Server 2012 STIG, Version 1.19](https://github.com/Microsoft/PowerStig/wiki/SqlServer-2012-Instance-1.19)

**Title:** Microsoft SQL Server 2012 Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 19 Benchmark Date: 26 Jul 2019  
**FileName:** U_MS_SQL_Server_2012_Instance_STIG_V1R19_Manual-xccdf.xml  
**Created:** 12/5/2019  
**Description:** The Microsoft SQL Server 2012 Security Technical Implementation Guide (STIG) is published as a tool to improve the security of Department of Defense (DoD) information systems. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **51** of **153** rules are automated; **33%**  

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-40950 | Medium | PermissionRule | FileSystemAuditRuleEntry |  |
| V-69169 | Medium | PermissionRule | FileSystemAuditRuleEntry |  |
| V-40936 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-40942 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-40943 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41021 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41022 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41024 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41027 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41028 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41029 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41030 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41031 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41032 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41033 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41035 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41037 | Low | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41042 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41207 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41208 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41209 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41246 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41248 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41250 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41251 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41252 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41262 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41263 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41264 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41265 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41266 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41267 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41268 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41271 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41273 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41274 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41275 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41276 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41277 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41278 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41279 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41284 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41287 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41289 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41294 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41295 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41296 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41305 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41306 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-41307 | Medium | SqlScriptQueryRule | None | V-41021 |
| V-55805 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-40907 | High | DocumentRule |
| V-40908 | Medium | DocumentRule |
| V-40909 | Low | DocumentRule |
| V-40912 | Low | DocumentRule |
| V-40913 | Medium | DocumentRule |
| V-40914 | Medium | DocumentRule |
| V-40916 | Medium | DocumentRule |
| V-40917 | High | DocumentRule |
| V-40918 | Medium | DocumentRule |
| V-40919 | Medium | DocumentRule |
| V-40927 | Medium | DocumentRule |
| V-40928 | Medium | DocumentRule |
| V-40929 | Medium | DocumentRule |
| V-40937 | Medium | DocumentRule |
| V-40941 | High | DocumentRule |
| V-40947 | Medium | DocumentRule |
| V-40948 | High | DocumentRule |
| V-40949 | Medium | DocumentRule |
| V-41034 | Low | DocumentRule |
| V-41038 | Medium | DocumentRule |
| V-41039 | Medium | DocumentRule |
| V-41041 | Medium | DocumentRule |
| V-41044 | Medium | DocumentRule |
| V-41046 | Medium | DocumentRule |
| V-41202 | Medium | DocumentRule |
| V-41204 | Medium | DocumentRule |
| V-41205 | Medium | DocumentRule |
| V-41304 | Medium | DocumentRule |
| V-41311 | Medium | DocumentRule |
| V-53877 | Medium | DocumentRule |
| V-70625 | Low | DocumentRule |
| V-72413 | Medium | DocumentRule |
| V-72415 | Medium | DocumentRule |
| V-40905 | Medium | ManualRule |
| V-40906 | Medium | ManualRule |
| V-40910 | Medium | ManualRule |
| V-40915 | Medium | ManualRule |
| V-40922 | Medium | ManualRule |
| V-40923 | Medium | ManualRule |
| V-40924 | Medium | ManualRule |
| V-40925 | Medium | ManualRule |
| V-40926 | Medium | ManualRule |
| V-40930 | Medium | ManualRule |
| V-40932 | High | ManualRule |
| V-40933 | Medium | ManualRule |
| V-40934 | Medium | ManualRule |
| V-40935 | Medium | ManualRule |
| V-40938 | Medium | ManualRule |
| V-40939 | Medium | ManualRule |
| V-40940 | Medium | ManualRule |
| V-40944 | Medium | ManualRule |
| V-40945 | High | ManualRule |
| V-40946 | Low | ManualRule |
| V-40951 | Medium | ManualRule |
| V-40952 | Low | ManualRule |
| V-40953 | Low | ManualRule |
| V-41016 | Medium | ManualRule |
| V-41017 | Medium | ManualRule |
| V-41023 | Low | ManualRule |
| V-41025 | Medium | ManualRule |
| V-41026 | Medium | ManualRule |
| V-41036 | Medium | ManualRule |
| V-41040 | Medium | ManualRule |
| V-41043 | Medium | ManualRule |
| V-41045 | Medium | ManualRule |
| V-41047 | Medium | ManualRule |
| V-41206 | Medium | ManualRule |
| V-41247 | Medium | ManualRule |
| V-41253 | Medium | ManualRule |
| V-41254 | Medium | ManualRule |
| V-41255 | Medium | ManualRule |
| V-41256 | Medium | ManualRule |
| V-41257 | Medium | ManualRule |
| V-41258 | Medium | ManualRule |
| V-41259 | Medium | ManualRule |
| V-41260 | Medium | ManualRule |
| V-41261 | Medium | ManualRule |
| V-41269 | Medium | ManualRule |
| V-41270 | Medium | ManualRule |
| V-41280 | Medium | ManualRule |
| V-41281 | Medium | ManualRule |
| V-41283 | Medium | ManualRule |
| V-41285 | Medium | ManualRule |
| V-41286 | Medium | ManualRule |
| V-41288 | Medium | ManualRule |
| V-41290 | Medium | ManualRule |
| V-41291 | Medium | ManualRule |
| V-41292 | Medium | ManualRule |
| V-41293 | Medium | ManualRule |
| V-41297 | Medium | ManualRule |
| V-41298 | Medium | ManualRule |
| V-41299 | Medium | ManualRule |
| V-41300 | Medium | ManualRule |
| V-41302 | Medium | ManualRule |
| V-41303 | Medium | ManualRule |
| V-41419 | Medium | ManualRule |
| V-43196 | Medium | ManualRule |
| V-54859 | Medium | ManualRule |
| V-54879 | Medium | ManualRule |
| V-54881 | Medium | ManualRule |
| V-59857 | Medium | ManualRule |
| V-59915 | Medium | ManualRule |
