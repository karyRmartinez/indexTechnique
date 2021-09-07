// Using a hash table in  this way as "using an index"
// The index at the back of the book tells you whether the topic can be found in the book, instead of you having to flip through the pages to find it.

// Given two arrays, determine/ check if one the arrays is a subset of the other.

// - asking about the input

//sample input: array of characters
// ["a", "b", "c", "d", "e", "f"]
// ["b", "d", "f", "h"]

// ["a", "b", "c", "d", "e", "f"]
// ["b", "d", "f"]

// - talking about the output -> Bool
// ["a", "b", "c", "d", "e", "f"]
// ["b", "d", "f", "h"]
// false

// ["a", "b", "c", "d", "e", "f"]
// ["b", "d", "f"]
// true

// constraint: every value of the second array is contained within the first array
// based on the lenght of the array it will determine the output 

func isSubSet(_ arr1: [String], _ arr2: [String] ) -> Bool {

  //determine which array is smaller
  var smallerArray = [String]()
  var biggerArray = [String]()
  
  if arr1.count < arr2.count { 
    smallerArray = arr1
    biggerArray = arr2
  } else if arr1.count > arr2.count {
    smallerArray = arr2
    biggerArray = arr1
  }

  //store all the items in the larger inside a dictionary
  var dict = [String: Bool]()
  // create an empty dictionary -> key: String character and value: true

  //for-loop to add biggerArray items to dictionary 
  for key in biggerArray { 
    dict[key] = true
  }
  //dict: ["a": true, "b": true, "c": true, "d": true, "e": true, "f": true]
  
  for key in smallerArray {
     // if every value in the smallerArray IS NOT in the biggerArray
     if  dict[key] == nil {
       return false
   }
 }

  // every value in the smallerArray IS in the biggerArray
  return true 
}

//Time Complexity - O(n) -> linear

var input1 = ["a", "b", "c", "d", "e", "f"]
var input2 = ["b", "d", "f", "h"]
 print(isSubSet(input1, input2))

var input3 = ["a", "b", "c", "d", "e", "f"]
var input4 = ["b", "d", "f"]
print(isSubSet(input3, input4))
