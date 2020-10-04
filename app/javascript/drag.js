function dragstart(event){
  //ドラッグするデータのid名をDataTransferオブジェクトにセット
  event.dataTransfer.setData("text", event.target.id);
}
/***** ドラッグ要素がドロップ要素に重なっている間の処理 *****/
function dragover(event){
  //dragoverイベントをキャンセルして、ドロップ先の要素がドロップを受け付けるようにする
  event.preventDefault();
}

/***** ドロップ時の処理 *****/
function drop(event){
  //ドラッグされたデータのid名をDataTransferオブジェクトから取得
  const id_name = event.dataTransfer.getData("text");
  console.log(id_name)
  //id名からドラッグされた要素を取得
  const drag_elm =document.getElementById(id_name);
  //ドロップ先にドラッグされた要素を追加
  event.currentTarget.appendChild(drag_elm);
  //エラー回避のため、ドロップ処理の最後にdropイベントをキャンセルしておく
  event.preventDefault();
}