class Solution(object):
    def reverse(self, x):
        """
        :type x: int
        :rtype: int
        """
        is_negative=False
        if x<0:
            is_negative=True
        reverse_number=0
        num=abs(x)
        while num>0:    
            lastdigit=num%10    
            reverse_number=(reverse_number*10)+lastdigit
            num=num//10
        if reverse_number<(-(2**31)) or reverse_number>(2**31-1):
            return 0    
        return -reverse_number if is_negative else reverse_number