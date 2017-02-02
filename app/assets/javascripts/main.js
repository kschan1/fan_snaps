$(document).ready(function() {

  // ajax call when like button is clicked
  $('.like').on('click', function(event){
    var $like_button = $(event.target);
    var $post = $(event.target).closest('.post');
    var postId = $post.data('post-id');
    var $likes_count = $post.find('.likes-count');
    var options = {
      url: '/api/likes',
      method: 'post',
      data: {
        id: postId
      },
      dataType: 'JSON'
    };
    function updateLikes(response) {
      $like_button.addClass('red');
      $likes_count.text(response.likes_count);
    }
    $.ajax(options).done(updateLikes);
  });

  $('.dropdown-toggle').dropdown();

});
