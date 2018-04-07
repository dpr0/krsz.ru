// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var ready;

ready = function() {
    $(document).on('click', '.edit-question-link', function(e) {
        var question_id;
        e.preventDefault();
        $(this).hide();
        question_id = $(this).data('questionId');
        return $('form#edit-question-' + question_id).show();
    });
    return App.cable.subscriptions.create('QuestionsChannel', {
        connected: function() {
            return this.perform('follow');
        },
        received: function(data) {
            return $(".questions-list").append(data);
        }
    });
};
