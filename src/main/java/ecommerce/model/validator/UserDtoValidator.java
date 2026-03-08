package ecommerce.model.validator;

import ecommerce.model.UserDto;
import org.jspecify.annotations.NonNull;
import org.springframework.validation.*;

public class UserDtoValidator implements Validator
{
    /**
     * Can this {@link Validator} {@link #validate(Object, Errors) validate}
     * instances of the supplied {@code clazz}?
     * <p>This method is <i>typically</i> implemented like so:
     * <pre class="code">return Foo.class.isAssignableFrom(clazz);</pre>
     * (Where {@code Foo} is the class (or superclass) of the actual
     * object instance that is to be {@link #validate(Object, Errors) validated}.)
     *
     * @param clazz the {@link Class} that this {@link Validator} is
     *              being asked if it can {@link #validate(Object, Errors) validate}
     * @return {@code true} if this {@link Validator} can indeed
     * {@link #validate(Object, Errors) validate} instances of the
     * supplied {@code clazz}
     */
    @Override
    public boolean supports(Class<?> clazz)
    {
        return clazz.equals(UserDto.class);
    }

    /**
     * Validate the given {@code target} object which must be of a
     * {@link Class} for which the {@link #supports(Class)} method
     * typically has returned (or would return) {@code true}.
     * <p>The supplied {@link Errors errors} instance can be used to report
     * any resulting validation errors, typically as part of a larger
     * binding process which this validator is meant to participate in.
     * Binding errors have typically been pre-registered with the
     * {@link Errors errors} instance before this invocation already.
     *
     * @param target the object that is to be validated
     * @param errors contextual state about the validation process
     * @see ValidationUtils
     */
    @Override
    public void validate(@NonNull Object target, @NonNull Errors errors)
    {
        UserDto userDto = (UserDto) target;
        if (userDto.email() == null || userDto.email().isBlank())
        {
            errors.rejectValue("email", "email.empty", "Email must not be empty");
        }
        else if (!userDto.email().matches("^[A-Za-z0-9+_.-]+@(.+)$"))
        {
            errors.rejectValue("email", "email.invalid", "Email format is invalid");
        }

        if (userDto.password() == null || userDto.password().isBlank())
        {
            errors.rejectValue("password", "password.empty", "Password must not be empty");
        }
        else if (userDto.password().length() < 6)
        {
            errors.rejectValue("password", "password.short", "Password must be at least 6 characters long");
        }

        if (userDto.phone() != null && !userDto.phone().matches("^\\+?[0-9]{7,15}$"))
        {
            errors.rejectValue("phone", "phone.invalid", "Phone number format is invalid");
        }
    }

    /**
     * Validate the given {@code target} object individually.
     * <p>Delegates to the common {@link #validate(Object, Errors)} method.
     * The returned {@link Errors errors} instance can be used to report
     * any resulting validation errors for the specific target object, for example,
     * {@code if (validator.validateObject(target).hasErrors()) ...} or
     * {@code validator.validateObject(target).failOnError(IllegalStateException::new));}.
     * <p>Note: This validation call comes with limitations in the {@link Errors}
     * implementation used, in particular no support for nested paths.
     * If this is insufficient for your purposes, call the regular
     * {@link #validate(Object, Errors)} method with a binding-capable
     * {@link Errors} implementation such as {@link BeanPropertyBindingResult}.
     *
     * @param target the object that is to be validated
     * @return resulting errors from the validation of the given object
     * @see SimpleErrors
     * @since 6.1
     */
    @Override
    public Errors validateObject(@NonNull Object target)
    {
        return Validator.super.validateObject(target);
    }
}
