context("convertNode")

data("tinyTree")
newTree <- tinyTree
newTree$node.label <- c(LETTERS[1:4], LETTERS[1:5])


test_that("convertNode could return correct results", {
    expect_convertNode_equal <- function(test, truth){
        expect_equal(convertNode(tree = tinyTree, node = test), truth)
    }
    expect_convertNode_equal(17, "Node_17")
    expect_convertNode_equal("Node_16", c(Node_16 = 16))
    expect_convertNode_equal(c(2, 4, 5), c("t7", "t9", "t4"))
    expect_convertNode_equal(2, "t7")
    expect_error(convertNode(tree = 2, node = 2))
    expect_error(convertNode(tree = tinyTree, node = 20))
    
    expect_warning(convertNode(tree = newTree, node = "B"))
})




