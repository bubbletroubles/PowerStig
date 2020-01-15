# [MS SQL Server 2012 STIG, Version 1.19](https://github.com/Microsoft/PowerStig/wiki/SqlServer-2012-Instance-1.19)

**Title:** Microsoft SQL Server 2012 Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 19 Benchmark Date: 26 Jul 2019  
**FileName:** U_MS_SQL_Server_2012_Instance_STIG_V1R19_Manual-xccdf.xml  
**Created:** 12/5/2019  
**Description:** The Microsoft SQL Server 2012 Security Technical Implementation Guide (STIG) is published as a tool to improve the security of Department of Defense (DoD) information systems. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **51** of **153** rules are automated; **33%**  

## Automated Rules

| StigRuleId | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- |
| V-40950 | PermissionRule | FileSystemAuditRuleEntry |  |
| V-69169 | PermissionRule | FileSystemAuditRuleEntry |  |
| V-40936 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-40942 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-40943 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41021 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41022 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41024 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41027 | SqlScriptQueryRule | None | V-41021 |
| V-41028 | SqlScriptQueryRule | None | V-41021 |
| V-41029 | SqlScriptQueryRule | None | V-41021 |
| V-41030 | SqlScriptQueryRule | None | V-41021 |
| V-41031 | SqlScriptQueryRule | None | V-41021 |
| V-41032 | SqlScriptQueryRule | None | V-41021 |
| V-41033 | SqlScriptQueryRule | None | V-41021 |
| V-41035 | SqlScriptQueryRule | None | V-41021 |
| V-41037 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41042 | SqlScriptQueryRule | None | V-41021 |
| V-41207 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41208 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41209 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41246 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41248 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41250 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41251 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41252 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41262 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41263 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41264 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41265 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41266 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41267 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41268 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41271 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41273 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41274 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41275 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41276 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41277 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41278 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41279 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41284 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41287 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41289 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41294 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41295 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41296 | SqlScriptQueryRule | SqlScriptQuery |  |
| V-41305 | SqlScriptQueryRule | None | V-41021 |
| V-41306 | SqlScriptQueryRule | None | V-41021 |
| V-41307 | SqlScriptQueryRule | None | V-41021 |
| V-55805 | SqlScriptQueryRule | SqlScriptQuery |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | RuleType |
| :---- | :---- |
| V-40907 | DocumentRule |
| V-40908 | DocumentRule |
| V-40909 | DocumentRule |
| V-40912 | DocumentRule |
| V-40913 | DocumentRule |
| V-40914 | DocumentRule |
| V-40916 | DocumentRule |
| V-40917 | DocumentRule |
| V-40918 | DocumentRule |
| V-40919 | DocumentRule |
| V-40927 | DocumentRule |
| V-40928 | DocumentRule |
| V-40929 | DocumentRule |
| V-40937 | DocumentRule |
| V-40941 | DocumentRule |
| V-40947 | DocumentRule |
| V-40948 | DocumentRule |
| V-40949 | DocumentRule |
| V-41034 | DocumentRule |
| V-41038 | DocumentRule |
| V-41039 | DocumentRule |
| V-41041 | DocumentRule |
| V-41044 | DocumentRule |
| V-41046 | DocumentRule |
| V-41202 | DocumentRule |
| V-41204 | DocumentRule |
| V-41205 | DocumentRule |
| V-41304 | DocumentRule |
| V-41311 | DocumentRule |
| V-53877 | DocumentRule |
| V-70625 | DocumentRule |
| V-72413 | DocumentRule |
| V-72415 | DocumentRule |
| V-40905 | ManualRule |
| V-40906 | ManualRule |
| V-40910 | ManualRule |
| V-40915 | ManualRule |
| V-40922 | ManualRule |
| V-40923 | ManualRule |
| V-40924 | ManualRule |
| V-40925 | ManualRule |
| V-40926 | ManualRule |
| V-40930 | ManualRule |
| V-40932 | ManualRule |
| V-40933 | ManualRule |
| V-40934 | ManualRule |
| V-40935 | ManualRule |
| V-40938 | ManualRule |
| V-40939 | ManualRule |
| V-40940 | ManualRule |
| V-40944 | ManualRule |
| V-40945 | ManualRule |
| V-40946 | ManualRule |
| V-40951 | ManualRule |
| V-40952 | ManualRule |
| V-40953 | ManualRule |
| V-41016 | ManualRule |
| V-41017 | ManualRule |
| V-41023 | ManualRule |
| V-41025 | ManualRule |
| V-41026 | ManualRule |
| V-41036 | ManualRule |
| V-41040 | ManualRule |
| V-41043 | ManualRule |
| V-41045 | ManualRule |
| V-41047 | ManualRule |
| V-41206 | ManualRule |
| V-41247 | ManualRule |
| V-41253 | ManualRule |
| V-41254 | ManualRule |
| V-41255 | ManualRule |
| V-41256 | ManualRule |
| V-41257 | ManualRule |
| V-41258 | ManualRule |
| V-41259 | ManualRule |
| V-41260 | ManualRule |
| V-41261 | ManualRule |
| V-41269 | ManualRule |
| V-41270 | ManualRule |
| V-41280 | ManualRule |
| V-41281 | ManualRule |
| V-41283 | ManualRule |
| V-41285 | ManualRule |
| V-41286 | ManualRule |
| V-41288 | ManualRule |
| V-41290 | ManualRule |
| V-41291 | ManualRule |
| V-41292 | ManualRule |
| V-41293 | ManualRule |
| V-41297 | ManualRule |
| V-41298 | ManualRule |
| V-41299 | ManualRule |
| V-41300 | ManualRule |
| V-41302 | ManualRule |
| V-41303 | ManualRule |
| V-41419 | ManualRule |
| V-43196 | ManualRule |
| V-54859 | ManualRule |
| V-54879 | ManualRule |
| V-54881 | ManualRule |
| V-59857 | ManualRule |
| V-59915 | ManualRule |
