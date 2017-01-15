$(document).ready(function() {

  $('.like').on('click', function(event){
    var $post = $(event.target).closest('.post');
    var postId = $post.data('post-id');
    var $like = $post.find('.likes-count');
    var options = {
      url: '/api/likes',
      method: 'post',
      data: {
        id: postId
      }
    };
    function updateLikesCount(response) {
      $like.text(response.likes_count);
    }
    $.ajax(options).done(updateLikesCount);
  });

});
