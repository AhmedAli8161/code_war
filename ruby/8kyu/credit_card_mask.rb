# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct.
# However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# my solution
def maskify(cc)
  len = cc.length
  index = len
  while index > 4
    cc[len - index] = '#'
    index = index - 1
  end
  cc
end

# Best Solution
def maskify(cc)
  cc.gsub(/.(?=....)/, '#')
end
