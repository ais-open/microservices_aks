var cbo = cbo || {};
cbo.BookReviewViewModel = function (modules, serviceUris) {
    if (!modules || !modules.ko) {
        throw new Error("One of following is null or empty: modules, modules.ko, modules.api");
    }

    var books = ko.observableArray([]),
        booksRequestUrl = serviceUris.BookEndpoint,
        bookRatingRequestUrl = serviceUris.RatingEndPoint,
        bookReviewRequestUrl = serviceUris.ReviewEndPoint,
        bookCategoryRequestUrl = serviceUris.CategoryEndPoint,
        bookBuyOnlineRequestUrl = serviceUris.BuyOnlineEndPoint,
        bookBestSellerRequestUrl = serviceUris.BestSellerEndPoint,
        bookRatings = ko.observableArray([]),
        bookReviews = ko.observableArray([]),
        bookCategories = ko.observableArray([]),
        bookBuyOnline = ko.observableArray([]),
        bookName = ko.observable(),
        bookIsbn = ko.observable(),
        reviewComment = ko.observable().extend({required: true}),
        rating = ko.observable().extend({ required: true }),
        reviewedBy = ko.observable().extend({required: true});

    
    bookBestSellers = ko.observableArray([]);

    var loadBooks = function () {
        $.ajax({
            url: booksRequestUrl,
            dataType: 'json'
        }).then(callbackSuccessBooks, retreiveBookCallbackFailure);
    };

    var loadData = function () {
        loadCategories();
        loadBuyOnline();
        loadReviews();
        loadRatings();
        loadBooks();
        loadBestSellers();
    }
    
    var loadRatings = function () {
        $.ajax({
            url: bookRatingRequestUrl,
            dataType: 'json'
        }).then(callbackSuccessBookRating, retreiveBookRatingCallbackFailure);
    }

    var callbackSuccessBookRating = function (data) {
        if (data) {
            bookRatings.removeAll();
            bookRatings(data);
        }
    };

    var loadBestSellers = function () {
        $.ajax({
            url: bookBestSellerRequestUrl,
            dataType: 'json'
        }).then(callbackSuccessBestSeller, retreiveBookBestSellerCallbackFailure);
    }

    var callbackSuccessBestSeller = function (data) {
        if (data) {
            bookBestSellers.removeAll();
            bookBestSellers(data);
        }
    };

    var loadBuyOnline = function () {
        $.ajax({
            url: bookBuyOnlineRequestUrl,
            dataType: 'json'
        }).then(callbackSuccessBookBuyOnline, retreiveBookBuyOnlineCallbackFailure);
    }

    var callbackSuccessBookBuyOnline = function (data) {
        if (data) {
            bookBuyOnline.removeAll();
            bookBuyOnline(data);
        }
    };

    var loadCategories = function () {
        $.ajax({
            url: bookCategoryRequestUrl,
            dataType: 'json'
        }).then(callbackSuccessBookCategories, retreiveBookCategoryCallbackFailure);
    }

    var callbackSuccessBookCategories = function (data) {
        if (data) {
            bookCategories.removeAll();
            bookCategories(data);
        }
    };

    var loadReviews = function () {
        $.ajax({
            url: bookReviewRequestUrl,
            dataType: 'json'
        }).then(callbackSuccessBookReviews, retreiveBookReviewCommentsCallbackFailure);
    }

    var callbackSuccessBookReviews = function (data) {
        if (data) {
            bookReviews.removeAll();
            bookReviews(data);
        }
    };

    var callbackSuccessBooks = function (data) {
        if (data) {
            books.removeAll();
            books(data);
        }
    };

    var getRating = function (isbn) {
        var result = ko.utils.arrayFirst(bookRatings(), function (rating) {
            return rating.isbn == isbn;
        });
        if (result != undefined || result != null){
            return result.rating;
        }
    }

    var getCategory = function (isbn) {
        var result = ko.utils.arrayFirst(bookCategories(), function (category) {
            return category.isbn == isbn;
        });
        if (result != undefined || result != null) {
            return result.category;
        }
    }

    var getReview = function (isbn) {
        var result = ko.utils.arrayFilter(bookReviews(), function (review) {
            return review.isbn == isbn;
        });
        if (result != null) {
            return result.sort(function (left, right) {
                return left.createdOn == right.createdOn ? 0 : (left.createdOn > right.createdOn ? -1 : 1)
            }).splice(0, 3);
        }
    }

    var getBuyOnlinelink = function (isbn) {
        var result = ko.utils.arrayFirst(bookBuyOnline(), function (review) {
            return review.isbn == isbn;
        });
        if (result != undefined || result != null) {
            return result.onlineLink;
        }
    }

    var getBestSeller = function (isbn) {
        var result = ko.utils.arrayFirst(bookBestSellers(), function (review) {
            return review.isbn == isbn;
        });
        if (result != undefined || result != null) {
            return result.bestSeller.split(',');
        }
    }

    var retreiveBookCallbackFailure = function (er) {
        $('#loadingData').css("display", "none");
        $("[service=bookServices]").css("display", "block");
        //console.error(er);
    };

    var retreiveBookCategoryCallbackFailure = function (er) {
        $("[service=categoryServices]").css("display", "block");
        //console.error(er);
    };

    var retreiveBookRatingCallbackFailure = function (er) {
        $("[service=ratingServices]").css("display", "block");
        //console.error(er);
    };

    var retreiveBookReviewCommentsCallbackFailure = function (er) {
        $("[service=bookReviewServices]").css("display", "block");
        //console.error(er);
    };

    var retreiveBookBestSellerCallbackFailure = function (er) {
        $("[service=bestSellerServices]").css("display", "block");
        //console.error(er);
    };

    var retreiveBookBuyOnlineCallbackFailure = function (er) {
        //console.error(er);
    };

    var openReviewCommentModal = function (data) {
        bookName(data.name);
        bookIsbn(data.isbn);
        $("#reviewSubmitModal").modal({
            backdrop:'static'
        });
    };

    var submitReview = function () {
        if (reviewComment() == undefined || rating() == undefined || reviewedBy() == undefined) {
            alert('Please fill all details.');
        } else {
            var comment = {
                name: bookName(),
                isbn: bookIsbn(),
                reviewComment: reviewComment(),
                rating: rating(),
                reviewBy: reviewedBy()
            };
            $.ajax({
                url: bookReviewRequestUrl,
                type: 'POST',
                contentType: "application/json",
                data: JSON.stringify(comment)
            }).then(callbackSuccessSubmitReview, callbackFailureSubmitReview);
        }
    };

    var callbackSuccessSubmitReview = function () {
        resetPopupWindow();
        alert('Review submitted successfully.');
    };

    var callbackFailureSubmitReview = function () {
        alert('Review submit failed.');
    };

    var resetPopupWindow = function () {
        reviewComment('');
        rating('');
        reviewedBy('');
    };

    var validateModal = function () {
        if (reviewComment() == undefined || rating() == undefined || reviewedBy() == undefined) {
            return false;
        }
        return true;
    };


    loadData();
    return {
        books: books,
        getRating: getRating,
        getCategory: getCategory,
        getReview: getReview,
        getBuyOnlinelink: getBuyOnlinelink,
        getBestSeller: getBestSeller,
        submitReview: submitReview,
        reviewComment: reviewComment,
        rating: rating,
        reviewedBy: reviewedBy,
        validateModal: validateModal,
        openReviewCommentModal: openReviewCommentModal
    };
};