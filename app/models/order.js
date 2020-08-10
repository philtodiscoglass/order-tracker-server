const mongoose = require('mongoose')

const exampleSchema = new mongoose.Schema({
  title: {
    type: String,
    required: true
  },
  orderStatus: {
    type: String,
    required: false
  },
  isPaid: {
    type: String,
    required: false
  },
  product: {
    type: String,
    required: true
  },
  price: {
    type: Number,
    required: true
  },
  contact: {
    type: String,
    required: true
  },
  shippingInfo: {
    type: String,
    required: true
  },
  refNum: {
    type: String,
    required: true
  },
  owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true
})

module.exports = mongoose.model('Example', exampleSchema)

// Title
// order status
// payment status
// product
// date
// contact info
// shipping info
// ref number
