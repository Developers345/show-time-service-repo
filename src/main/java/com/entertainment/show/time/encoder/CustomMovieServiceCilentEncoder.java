package com.entertainment.show.time.encoder;

import feign.RequestTemplate;
import feign.codec.EncodeException;
import feign.codec.Encoder;
import tools.jackson.databind.ObjectMapper;

import java.lang.reflect.Type;

public class CustomMovieServiceCilentEncoder implements Encoder {
    @Override
    public void encode(Object object, Type type, RequestTemplate requestTemplate) throws EncodeException {

        try {
            //manually convert the object to JSON string
            ObjectMapper objectMapper = new ObjectMapper();
            String jsonString = objectMapper.writeValueAsString(object);
            requestTemplate.body(jsonString);
        }catch (Exception e){
            throw new EncodeException("Error encoding request body", e);
        }

    }
}
