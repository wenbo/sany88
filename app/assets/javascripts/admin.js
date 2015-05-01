function delete_resource(route, itemid){
  if(confirm('Delete? Ara you sure?')){
    $.ajax({
      beforeSend: function(xhr) {
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'));
      },
      type: 'delete',
      url: '/admin/'+route+'/'+itemid,
      async: false,
      dataType: 'json',
      success: function(data){
        if(data.msg === 'ok'){
          $('#'+route+'_'+itemid).remove();
        }
      }
    });
  }
  return false;
}
