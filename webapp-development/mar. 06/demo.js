/* 取得課程查詢條件區塊 （此為embedded document) */
var target_frame=document.querySelector(\"html > frameset > frame:nth-child(2)");

/* 取出embedded document的document內容 */
var target_content=target_frame.contentDocument;

/* 更動條件值 */
target_content.form1.qEdu[1].checked=true; //勾選大學部
target_content.bill.qdept.value=\"LU04"; //選擇\"經濟系\"

/* 送出條件 */
target_content.bill.submit();