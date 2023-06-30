# python imports
# import requests

# Django imports
# Rest Framework imports
from rest_framework import status
from rest_framework.generics import CreateAPIView
from rest_framework.response import Response
# from rest_framework_jwt.serializers import JSONWebTokenSerializer
# from rest_framework_jwt.views import JSONWebTokenAPIView

from .serializers import MessageCreateSerializer


class MessageApiView(CreateAPIView):
    serializer_class = MessageCreateSerializer

    __doc__ = "Message API for clients"

    def post(self, request, *args, **kwargs):
        try:
            message_serializer = self.serializer_class(data=request.data)
            if message_serializer.is_valid():
                message_serializer.save()
                #
                return Response(message_serializer.data, status=status.HTTP_201_CREATED)
            else:
                msg = ''
                for error in message_serializer.errors.values():
                    msg += error[0] + " "
                return Response({'status': False,
                                 'message': msg}, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({'status': False,
                             'message': str(e)},
                            status=status.HTTP_400_BAD_REQUEST)
