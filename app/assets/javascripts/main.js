$(document).ready(function() {

  // ajax call when like button is clicked
  $('.like').on('click', function(event){
    var $post = $(event.target).closest('.post');
    var postId = $post.data('post-id');
    var $like = $post.find('.likes-count');
    var options = {
      url: '/api/likes',
      method: 'post',
      data: {
        id: postId
      },
      dataType: 'JSON'
    };
    function updateLikesCount(response) {
      $like.text(response.likes_count);
    }
    $.ajax(options).done(updateLikesCount);
  });

  $('.dropdown-toggle').dropdown();

});
